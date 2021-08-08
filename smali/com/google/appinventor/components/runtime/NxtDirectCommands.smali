.class public Lcom/google/appinventor/components/runtime/NxtDirectCommands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "NxtDirectCommands.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS NXT robot, with functions to send NXT Direct Commands."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 53
    const-string v0, "NxtDirectCommands"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private closeHandle(Ljava/lang/String;I)V
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "handle"    # I

    .prologue
    const/4 v3, 0x1

    .line 694
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 695
    .local v0, "command":[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 696
    const/16 v2, -0x7c

    aput-byte v2, v0, v3

    .line 697
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 698
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 699
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 700
    return-void
.end method

.method private getOutputState(Ljava/lang/String;I)[B
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 221
    .local v0, "command":[B
    aput-byte v3, v0, v3

    .line 222
    const/4 v2, 0x6

    aput-byte v2, v0, v4

    .line 223
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 225
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    array-length v2, v1

    const/16 v3, 0x19

    if-ne v2, v3, :cond_0

    .line 233
    .end local v1    # "returnPackage":[B
    :goto_0
    return-object v1

    .line 229
    .restart local v1    # "returnPackage":[B
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 25)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    const/4 v4, 0x1

    .line 647
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 648
    .local v0, "command":[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 649
    const/16 v2, -0x7f

    aput-byte v2, v0, v4

    .line 650
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 651
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 652
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 653
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 654
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 655
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 661
    :goto_0
    return-object v2

    .line 657
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    const/4 v4, 0x1

    .line 779
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 780
    .local v0, "command":[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 781
    const/16 v2, -0x77

    aput-byte v2, v0, v4

    .line 782
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 783
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 784
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 785
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 787
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 793
    :goto_0
    return-object v2

    .line 789
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeChunk(Ljava/lang/String;I[BI)I
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "buffer"    # [B
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 666
    const/16 v3, 0x20

    if-le p4, v3, :cond_0

    .line 667
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "length must be <= 32"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 670
    :cond_0
    add-int/lit8 v3, p4, 0x3

    new-array v0, v3, [B

    .line 671
    .local v0, "command":[B
    aput-byte v4, v0, v2

    .line 672
    const/16 v3, -0x7d

    aput-byte v3, v0, v4

    .line 673
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 674
    const/4 v3, 0x3

    invoke-static {p3, v2, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 676
    .local v1, "returnPackage":[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 677
    array-length v3, v1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 678
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v2

    .line 679
    .local v2, "writtenLength":I
    if-eq v2, p4, :cond_2

    .line 680
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes were written (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to write file on robot"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 686
    .end local v2    # "writtenLength":I
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 6)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_2
    return v2
.end method


# virtual methods
.method public DeleteFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a file on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 704
    const-string v1, "DeleteFile"

    .line 705
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 720
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 709
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x196

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    :cond_1
    const/16 v3, 0x16

    new-array v0, v3, [B

    .line 715
    .local v0, "command":[B
    aput-byte v5, v0, v6

    .line 716
    const/16 v3, -0x7b

    aput-byte v3, v0, v5

    .line 717
    const/4 v3, 0x2

    const/16 v4, 0x13

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 718
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 719
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Download a file to the robot."
    .end annotation

    .prologue
    .line 593
    const-string v5, "DownloadFile"

    .line 594
    .local v5, "functionName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 644
    :goto_0
    return-void

    .line 597
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    .line 598
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v15, 0x19e

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v5, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v15, 0x19f

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v5, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 609
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 611
    .local v12, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v14, v12}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v14

    const/16 v15, 0x400

    invoke-direct {v9, v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 613
    .local v9, "in":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 614
    .local v6, "fileSize":J
    const-string v14, ".rxe"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, ".ric"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 615
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 617
    .local v8, "handle":Ljava/lang/Integer;
    :goto_1
    if-nez v8, :cond_5

    .line 634
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 637
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 639
    .end local v6    # "fileSize":J
    .end local v8    # "handle":Ljava/lang/Integer;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v12    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 640
    .local v4, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v15, 0x1a0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 641
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v5, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 616
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "fileSize":J
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    goto :goto_1

    .line 622
    .restart local v8    # "handle":Ljava/lang/Integer;
    :cond_5
    const/16 v14, 0x20

    :try_start_6
    new-array v2, v14, [B

    .line 623
    .local v2, "buffer":[B
    const-wide/16 v10, 0x0

    .line 624
    .local v10, "sentLength":J
    :goto_2
    cmp-long v14, v10, v6

    if-gez v14, :cond_6

    .line 625
    const-wide/16 v14, 0x20

    sub-long v16, v6, v10

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v3, v14

    .line 626
    .local v3, "chunkLength":I
    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14, v3}, Ljava/io/InputStream;->read([BII)I

    .line 627
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->writeChunk(Ljava/lang/String;I[BI)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v13

    .line 628
    .local v13, "writtenLength":I
    int-to-long v14, v13

    add-long/2addr v10, v14

    .line 629
    goto :goto_2

    .line 631
    .end local v3    # "chunkLength":I
    .end local v13    # "writtenLength":I
    :cond_6
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 634
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 637
    :try_start_9
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 631
    .end local v2    # "buffer":[B
    .end local v10    # "sentLength":J
    :catchall_0
    move-exception v14

    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V

    throw v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 634
    .end local v6    # "fileSize":J
    .end local v8    # "handle":Ljava/lang/Integer;
    :catchall_1
    move-exception v14

    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 637
    .end local v9    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    :try_start_c
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    throw v14
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
.end method

.method public GetBatteryLevel()I
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery level for the robot. Returns the voltage in millivolts."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 357
    const-string v1, "GetBatteryLevel"

    .line 358
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v3

    .line 362
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 363
    .local v0, "command":[B
    aput-byte v3, v0, v3

    .line 364
    const/16 v4, 0xb

    aput-byte v4, v0, v5

    .line 365
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 366
    .local v2, "returnPackage":[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    array-length v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 368
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v3

    goto :goto_0

    .line 370
    :cond_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetBatteryLevel: unexpected return package length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (expected 5)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetBrickName()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the brick name of the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 817
    const-string v1, "GetBrickName"

    .line 818
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 819
    const-string v3, ""

    .line 829
    :goto_0
    return-object v3

    .line 822
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 823
    .local v0, "command":[B
    const/4 v3, 0x0

    aput-byte v4, v0, v3

    .line 824
    const/16 v3, -0x65

    aput-byte v3, v0, v4

    .line 825
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 826
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 829
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public GetCurrentProgramName()Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of currently running program on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 517
    const-string v1, "GetCurrentProgramName"

    .line 518
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 519
    const-string v4, ""

    .line 537
    :goto_0
    return-object v4

    .line 522
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 523
    .local v0, "command":[B
    aput-byte v6, v0, v6

    .line 524
    const/16 v4, 0x11

    aput-byte v4, v0, v5

    .line 525
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 526
    .local v2, "returnPackage":[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v3

    .line 527
    .local v3, "status":I
    if-nez v3, :cond_1

    .line 529
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 531
    :cond_1
    const/16 v4, 0xec

    if-ne v3, v4, :cond_2

    .line 533
    const-string v4, ""

    goto :goto_0

    .line 536
    :cond_2
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 537
    const-string v4, ""

    goto :goto_0
.end method

.method public GetFirmwareVersion()Ljava/util/List;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware and protocol version numbers for the robot as a list where the first element is the firmware version number and the second element is the protocol version number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 760
    const-string v1, "GetFirmwareVersion"

    .line 761
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 762
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 775
    :goto_0
    return-object v3

    .line 765
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 766
    .local v0, "command":[B
    const/4 v4, 0x0

    aput-byte v5, v0, v4

    .line 767
    const/16 v4, -0x78

    aput-byte v4, v0, v5

    .line 768
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 769
    .local v2, "returnPackage":[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 770
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v3, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x6

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 775
    .end local v3    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public GetInputValues(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    const-string v1, "GetInputValues"

    .line 240
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    :goto_0
    return-object v2

    .line 246
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 253
    .local v3, "port":I
    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v4

    .line 254
    .local v4, "returnPackage":[B
    if-eqz v4, :cond_1

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v2, "inputValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const/16 v5, 0xa

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    const/16 v5, 0xc

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const/16 v5, 0xe

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    .end local v2    # "inputValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "port":I
    .end local v4    # "returnPackage":[B
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x198

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, p0, v1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 268
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "port":I
    .restart local v4    # "returnPackage":[B
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public GetOutputState(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "motorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the output state of a motor on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    const-string v1, "GetOutputState"

    .line 187
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :goto_0
    return-object v2

    .line 193
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 200
    .local v3, "port":I
    invoke-direct {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getOutputState(Ljava/lang/String;I)[B

    move-result-object v4

    .line 201
    .local v4, "returnPackage":[B
    if-eqz v4, :cond_1

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v2, "outputState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const/16 v5, 0x9

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const/16 v5, 0x11

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const/16 v5, 0x15

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 194
    .end local v2    # "outputState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    .end local v3    # "port":I
    .end local v4    # "returnPackage":[B
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x197

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, p0, v1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "port":I
    .restart local v4    # "returnPackage":[B
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public KeepAlive()J
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep Alive. Returns the current sleep time limit in milliseconds."
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 393
    const-string v1, "KeepAlive"

    .line 394
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-wide v4

    .line 398
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 399
    .local v0, "command":[B
    aput-byte v6, v0, v6

    .line 400
    const/16 v3, 0xd

    aput-byte v3, v0, v7

    .line 401
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 402
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v7

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    array-length v3, v2

    const/4 v6, 0x7

    if-ne v3, v6, :cond_2

    .line 404
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v4

    goto :goto_0

    .line 406
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeepAlive: unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected 7)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public ListFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "wildcard"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list containing the names of matching files found on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 725
    const-string v3, "ListFiles"

    .line 726
    .local v3, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 727
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 753
    :cond_0
    return-object v2

    .line 730
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v2, "fileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 733
    const-string p1, "*.*"

    .line 736
    :cond_2
    const/16 v7, 0x16

    new-array v0, v7, [B

    .line 737
    .local v0, "command":[B
    aput-byte v8, v0, v9

    .line 738
    const/16 v7, -0x7a

    aput-byte v7, v0, v8

    .line 739
    const/16 v7, 0x13

    invoke-virtual {p0, p1, v0, v10, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 740
    invoke-virtual {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 741
    .local v5, "returnPackage":[B
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 742
    .local v6, "status":I
    :goto_0
    if-nez v6, :cond_0

    .line 743
    invoke-virtual {p0, v5, v11}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    .line 744
    .local v4, "handle":I
    const/4 v7, 0x4

    invoke-virtual {p0, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "fileName":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    new-array v0, v11, [B

    .line 747
    aput-byte v8, v0, v9

    .line 748
    const/16 v7, -0x79

    aput-byte v7, v0, v8

    .line 749
    invoke-virtual {p0, v4, v0, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 750
    invoke-virtual {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 751
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 752
    goto :goto_0
.end method

.method public LsGetStatus(Ljava/lang/String;)I
    .locals 7
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the count of available bytes to read."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 415
    const-string v1, "LsGetStatus"

    .line 416
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    :goto_0
    return v3

    .line 422
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 429
    .local v2, "port":I
    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsGetStatus(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 423
    .end local v2    # "port":I
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x198

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public LsRead(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    const-string v2, "LsRead"

    .line 486
    .local v2, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 487
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 511
    :cond_0
    :goto_0
    return-object v4

    .line 492
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 499
    .local v6, "port":I
    invoke-virtual {p0, v2, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsRead(Ljava/lang/String;I)[B

    move-result-object v7

    .line 500
    .local v7, "returnPackage":[B
    if-eqz v7, :cond_2

    .line 501
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v0

    .line 503
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 504
    add-int/lit8 v8, v3, 0x4

    aget-byte v8, v7, v8

    and-int/lit16 v5, v8, 0xff

    .line 505
    .local v5, "n":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 493
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "n":I
    .end local v6    # "port":I
    .end local v7    # "returnPackage":[B
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v9, 0x198

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v8, p0, v2, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 496
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 511
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "port":I
    .restart local v7    # "returnPackage":[B
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public LsWrite(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 15
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .param p2, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "rxDataLength"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .prologue
    .line 435
    const-string v5, "LsWrite"

    .line 436
    .local v5, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 479
    :goto_0
    return-void

    .line 442
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 449
    .local v8, "port":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v10

    const/16 v11, 0x10

    if-le v10, v11, :cond_1

    .line 450
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x19b

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 443
    .end local v8    # "port":I
    :catch_0
    move-exception v3

    .line 444
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x198

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "port":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 456
    .local v1, "array":[Ljava/lang/Object;
    array-length v10, v1

    new-array v2, v10, [B

    .line 457
    .local v2, "bytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v10, v1

    if-ge v6, v10, :cond_3

    .line 460
    aget-object v4, v1, v6

    .line 461
    .local v4, "element":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 464
    .local v9, "s":Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 470
    .local v7, "n":I
    and-int/lit16 v10, v7, 0xff

    int-to-byte v10, v10

    aput-byte v10, v2, v6

    .line 471
    shr-int/lit8 v7, v7, 0x8

    .line 472
    if-eqz v7, :cond_2

    const/4 v10, -0x1

    if-eq v7, v10, :cond_2

    .line 473
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x19d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    .line 474
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 473
    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    .end local v7    # "n":I
    :catch_1
    move-exception v3

    .line 466
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x19c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    .line 467
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 466
    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 457
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "n":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 478
    .end local v4    # "element":Ljava/lang/Object;
    .end local v7    # "n":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    move/from16 v0, p3

    invoke-virtual {p0, v5, v8, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsWrite(Ljava/lang/String;I[BI)V

    goto :goto_0
.end method

.method public MessageRead(I)Ljava/lang/String;
    .locals 12
    .param p1, "mailbox"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read a message from a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 542
    const-string v1, "MessageRead"

    .line 543
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 544
    const-string v5, ""

    .line 579
    :goto_0
    return-object v5

    .line 550
    :cond_0
    if-lt p1, v7, :cond_1

    const/16 v5, 0xa

    if-le p1, v5, :cond_2

    .line 551
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x199

    new-array v7, v7, [Ljava/lang/Object;

    .line 552
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 551
    invoke-virtual {v5, p0, v1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 553
    const-string v5, ""

    goto :goto_0

    .line 556
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 558
    new-array v0, v11, [B

    .line 559
    .local v0, "command":[B
    aput-byte v9, v0, v9

    .line 560
    const/16 v5, 0x13

    aput-byte v5, v0, v7

    .line 561
    const/4 v5, 0x2

    invoke-virtual {p0, v9, v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 562
    invoke-virtual {p0, p1, v0, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 563
    invoke-virtual {p0, v7, v0, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 564
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    .line 565
    .local v4, "returnPackage":[B
    aget-byte v5, v0, v7

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 566
    array-length v5, v4

    const/16 v6, 0x40

    if-ne v5, v6, :cond_4

    .line 567
    invoke-virtual {p0, v4, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    .line 568
    .local v2, "mailboxEcho":I
    if-eq v2, p1, :cond_3

    .line 569
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageRead: unexpected return mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_3
    invoke-virtual {p0, v4, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 573
    .local v3, "messageLength":I
    invoke-virtual {p0, v4, v11, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 575
    .end local v2    # "mailboxEcho":I
    .end local v3    # "messageLength":I
    :cond_4
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageRead: unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected 64)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_5
    const-string v5, ""

    goto/16 :goto_0
.end method

.method public MessageWrite(ILjava/lang/String;)V
    .locals 8
    .param p1, "mailbox"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write a message to a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 297
    const-string v1, "MessageWrite"

    .line 298
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 328
    :goto_0
    return-void

    .line 305
    :cond_0
    if-lt p1, v5, :cond_1

    const/16 v3, 0xa

    if-le p1, v3, :cond_2

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x199

    new-array v5, v5, [Ljava/lang/Object;

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 306
    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 311
    .local v2, "messageLength":I
    const/16 v3, 0x3a

    if-le v2, v3, :cond_3

    .line 312
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x19a

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 319
    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 320
    .local v0, "command":[B
    const/16 v3, -0x80

    aput-byte v3, v0, v7

    .line 321
    const/16 v3, 0x9

    aput-byte v3, v0, v5

    .line 322
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 324
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 325
    const/4 v3, 0x4

    invoke-virtual {p0, p2, v0, v3, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 327
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlaySoundFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play a sound file on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 100
    const-string v1, "PlaySoundFile"

    .line 101
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x196

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rso"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_2
    const/16 v2, 0x17

    new-array v0, v2, [B

    .line 114
    .local v0, "command":[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 115
    const/4 v2, 0x1

    aput-byte v5, v0, v2

    .line 116
    invoke-virtual {p0, v4, v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 117
    const/4 v2, 0x3

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 118
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlayTone(II)V
    .locals 5
    .param p1, "frequencyHz"    # I
    .param p2, "durationMs"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .prologue
    .line 123
    const-string v1, "PlayTone"

    .line 124
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    :goto_0
    return-void

    .line 128
    :cond_0
    const/16 v2, 0xc8

    if-ge p1, v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 200."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 p1, 0xc8

    .line 132
    :cond_1
    const/16 v2, 0x36b0

    if-le p1, v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 14000."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 p1, 0x36b0

    .line 136
    :cond_2
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 137
    .local v0, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 138
    const/4 v2, 0x1

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 139
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 140
    const/4 v2, 0x4

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 141
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public ResetInputScaledValue(Ljava/lang/String;)V
    .locals 8
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the scaled value of an input sensor on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 273
    const-string v2, "ResetInputScaledValue"

    .line 274
    .local v2, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 293
    :goto_0
    return-void

    .line 280
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 287
    .local v3, "port":I
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->resetInputScaledValue(Ljava/lang/String;I)V

    .line 288
    const/4 v4, 0x3

    new-array v0, v4, [B

    .line 289
    .local v0, "command":[B
    const/16 v4, -0x80

    aput-byte v4, v0, v7

    .line 290
    const/16 v4, 0x8

    aput-byte v4, v0, v6

    .line 291
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 292
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    .line 281
    .end local v0    # "command":[B
    .end local v3    # "port":I
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x198

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {v4, p0, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ResetMotorPosition(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "motorPortLetter"    # Ljava/lang/String;
    .param p2, "relative"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset motor position."
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 332
    const-string v2, "ResetMotorPosition"

    .line 333
    .local v2, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 352
    :goto_0
    return-void

    .line 339
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 346
    .local v3, "port":I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 347
    .local v0, "command":[B
    const/16 v4, -0x80

    aput-byte v4, v0, v7

    .line 348
    const/16 v4, 0xa

    aput-byte v4, v0, v6

    .line 349
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 350
    const/4 v4, 0x3

    invoke-virtual {p0, p2, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 351
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    .line 340
    .end local v0    # "command":[B
    .end local v3    # "port":I
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x197

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {v4, p0, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetBrickName(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the brick name of the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 802
    const-string v1, "SetBrickName"

    .line 803
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 813
    :goto_0
    return-void

    .line 807
    :cond_0
    const/16 v3, 0x12

    new-array v0, v3, [B

    .line 808
    .local v0, "command":[B
    const/4 v3, 0x0

    aput-byte v5, v0, v3

    .line 809
    const/16 v3, -0x68

    aput-byte v3, v0, v5

    .line 810
    const/4 v3, 0x2

    const/16 v4, 0xf

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 811
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 812
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public SetInputMode(Ljava/lang/String;II)V
    .locals 7
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .param p2, "sensorType"    # I
    .param p3, "sensorMode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Configure an input sensor on the robot."
    .end annotation

    .prologue
    .line 167
    const-string v1, "SetInputMode"

    .line 168
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    :goto_0
    return-void

    .line 174
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 181
    .local v2, "port":I
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setInputMode(Ljava/lang/String;III)V

    goto :goto_0

    .line 175
    .end local v2    # "port":I
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x198

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetOutputState(Ljava/lang/String;IIIIIJ)V
    .locals 13
    .param p1, "motorPortLetter"    # Ljava/lang/String;
    .param p2, "power"    # I
    .param p3, "mode"    # I
    .param p4, "regulationMode"    # I
    .param p5, "turnRatio"    # I
    .param p6, "runState"    # I
    .param p7, "tachoLimit"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the output state of a motor on the robot."
    .end annotation

    .prologue
    .line 147
    const-string v3, "SetOutputState"

    .line 148
    .local v3, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 162
    .local v4, "port":I
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sanitizeTurnRatio(I)I

    move-result v8

    move-object v2, p0

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    .line 161
    invoke-virtual/range {v2 .. v11}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0

    .line 155
    .end local v4    # "port":I
    :catch_0
    move-exception v12

    .line 156
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x197

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, p0, v3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StartProgram(Ljava/lang/String;)V
    .locals 5
    .param p1, "programName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start execution of a previously downloaded program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 64
    const-string v1, "StartProgram"

    .line 65
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x195

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rxe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    :cond_2
    const/16 v2, 0x16

    new-array v0, v2, [B

    .line 78
    .local v0, "command":[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 79
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 80
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 81
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopProgram()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop execution of the currently running program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 87
    const-string v1, "StopProgram"

    .line 88
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 93
    .local v0, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 94
    aput-byte v4, v0, v4

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopSoundPlayback()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop sound playback."
    .end annotation

    .prologue
    .line 379
    const-string v1, "StopSoundPlayback"

    .line 380
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    :goto_0
    return-void

    .line 384
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 385
    .local v0, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 386
    const/4 v2, 0x1

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    .line 387
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method
