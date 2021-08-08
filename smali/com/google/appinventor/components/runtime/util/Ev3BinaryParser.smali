.class public Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;
.super Ljava/lang/Object;
.source "Ev3BinaryParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;
    }
.end annotation


# static fields
.field private static PRIMPAR_1_BYTE:B

.field private static PRIMPAR_2_BYTES:B

.field private static PRIMPAR_4_BYTES:B

.field private static PRIMPAR_ADDR:B

.field private static PRIMPAR_BYTES:B

.field private static PRIMPAR_CONST:B

.field private static PRIMPAR_CONST_SIGN:B

.field private static PRIMPAR_GLOBAL:B

.field private static PRIMPAR_HANDLE:B

.field private static PRIMPAR_INDEX:B

.field private static PRIMPAR_LOCAL:B

.field private static PRIMPAR_LONG:B

.field private static PRIMPAR_SHORT:B

.field private static PRIMPAR_STRING:B

.field private static PRIMPAR_STRING_OLD:B

.field private static PRIMPAR_VALUE:B

.field private static PRIMPAR_VARIABEL:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 22
    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_SHORT:B

    .line 23
    const/16 v0, -0x80

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    .line 25
    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST:B

    .line 26
    const/16 v0, 0x40

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    .line 27
    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    .line 28
    sput-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    .line 29
    const/16 v0, 0x10

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_HANDLE:B

    .line 30
    const/16 v0, 0x8

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_ADDR:B

    .line 32
    const/16 v0, 0x1f

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_INDEX:B

    .line 33
    sput-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST_SIGN:B

    .line 34
    const/16 v0, 0x3f

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VALUE:B

    .line 36
    const/4 v0, 0x7

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_BYTES:B

    .line 38
    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_STRING_OLD:B

    .line 39
    const/4 v0, 0x1

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_1_BYTE:B

    .line 40
    const/4 v0, 0x2

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_2_BYTES:B

    .line 41
    const/4 v0, 0x3

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_4_BYTES:B

    .line 42
    const/4 v0, 0x4

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_STRING:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B
    .locals 13
    .param p0, "opcode"    # B
    .param p1, "needReply"    # Z
    .param p2, "globalAllocation"    # I
    .param p3, "localAllocation"    # I
    .param p4, "paramFormat"    # Ljava/lang/String;
    .param p5, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 507
    if-ltz p2, :cond_0

    const/16 v9, 0x3ff

    if-gt p2, v9, :cond_0

    if-ltz p3, :cond_0

    const/16 v9, 0x3f

    move/from16 v0, p3

    if-gt v0, v9, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, p5

    array-length v10, v0

    if-eq v9, v10, :cond_1

    .line 508
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 512
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v8, "payloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_f

    .line 515
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 516
    .local v6, "letter":C
    aget-object v7, p5, v5

    .line 518
    .local v7, "obj":Ljava/lang/Object;
    sparse-switch v6, :sswitch_data_0

    .line 576
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Illegal format string"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 520
    :sswitch_0
    instance-of v9, v7, Ljava/lang/Byte;

    if-eqz v9, :cond_3

    move-object v9, v7

    .line 521
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const/16 v10, 0x1f

    if-gt v9, v10, :cond_2

    move-object v9, v7

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const/16 v10, -0x1f

    if-lt v9, v10, :cond_2

    .line 522
    check-cast v7, Ljava/lang/Byte;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC0(B)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 524
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_2
    check-cast v7, Ljava/lang/Byte;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC1(B)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 526
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v9, v7, Ljava/lang/Short;

    if-eqz v9, :cond_4

    .line 527
    check-cast v7, Ljava/lang/Short;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC2(S)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_5

    .line 529
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC4(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 535
    :sswitch_1
    instance-of v9, v7, Ljava/lang/Byte;

    if-eqz v9, :cond_7

    move-object v9, v7

    .line 536
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const/16 v10, 0x1f

    if-gt v9, v10, :cond_6

    move-object v9, v7

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const/16 v10, -0x1f

    if-lt v9, v10, :cond_6

    .line 537
    check-cast v7, Ljava/lang/Byte;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV0(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 539
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_6
    check-cast v7, Ljava/lang/Byte;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV1(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 541
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v9, v7, Ljava/lang/Short;

    if-eqz v9, :cond_8

    .line 542
    check-cast v7, Ljava/lang/Short;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV2(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 543
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_9

    .line 544
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV4(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 546
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_9
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 550
    :sswitch_2
    instance-of v9, v7, Ljava/lang/Byte;

    if-eqz v9, :cond_b

    move-object v9, v7

    .line 551
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const/16 v10, 0x1f

    if-gt v9, v10, :cond_a

    move-object v9, v7

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const/16 v10, -0x1f

    if-lt v9, v10, :cond_a

    .line 552
    check-cast v7, Ljava/lang/Byte;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV0(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 554
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_a
    check-cast v7, Ljava/lang/Byte;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV1(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 556
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_b
    instance-of v9, v7, Ljava/lang/Short;

    if-eqz v9, :cond_c

    .line 557
    check-cast v7, Ljava/lang/Short;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV2(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 558
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_c
    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_d

    .line 559
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV4(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 561
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_d
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 565
    :sswitch_3
    instance-of v9, v7, Ljava/lang/String;

    if-nez v9, :cond_e

    .line 566
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 569
    :cond_e
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v7, Ljava/lang/String;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 570
    :catch_0
    move-exception v4

    .line 571
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 581
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "letter":C
    :cond_f
    const/4 v3, 0x4

    .line 582
    .local v3, "bufferCapacity":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 583
    .local v1, "array":[B
    array-length v10, v1

    add-int/2addr v3, v10

    goto :goto_2

    .line 586
    .end local v1    # "array":[B
    :cond_10
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 587
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 588
    if-eqz p1, :cond_11

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 590
    const/4 v9, 0x2

    new-array v9, v9, [B

    const/4 v10, 0x0

    and-int/lit16 v11, p2, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    const/4 v10, 0x1

    ushr-int/lit8 v11, p2, 0x8

    and-int/lit8 v11, v11, 0x3

    shl-int/lit8 v12, p3, 0x2

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 594
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 595
    .restart local v1    # "array":[B
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 588
    .end local v1    # "array":[B
    :cond_11
    const/16 v9, -0x80

    goto :goto_3

    .line 597
    :cond_12
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    return-object v9

    .line 518
    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x67 -> :sswitch_2
        0x6c -> :sswitch_1
        0x73 -> :sswitch_3
    .end sparse-switch
.end method

.method public static encodeGV0(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 438
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_INDEX:B

    and-int/2addr v2, p0

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_SHORT:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeGV1(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 442
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_1_BYTE:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeGV2(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 447
    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_2_BYTES:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeGV4(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 453
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_4_BYTES:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeLC0(B)[B
    .locals 3
    .param p0, "v"    # B

    .prologue
    .line 388
    const/16 v0, -0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoded value must be in range [0, 127]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VALUE:B

    and-int/2addr v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeLC1(B)[B
    .locals 4
    .param p0, "v"    # B

    .prologue
    .line 395
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_1_BYTE:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeLC2(S)[B
    .locals 4
    .param p0, "v"    # S

    .prologue
    .line 400
    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_2_BYTES:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeLC4(I)[B
    .locals 4
    .param p0, "v"    # I

    .prologue
    .line 406
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_4_BYTES:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeLV0(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 415
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_INDEX:B

    and-int/2addr v2, p0

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_SHORT:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeLV1(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 419
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_1_BYTE:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeLV2(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 424
    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_2_BYTES:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static encodeLV4(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 430
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    or-int/2addr v2, v3

    sget-byte v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_4_BYTES:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static varargs encodeSystemCommand(BZ[Ljava/lang/Object;)[B
    .locals 8
    .param p0, "command"    # B
    .param p1, "needReply"    # Z
    .param p2, "parameters"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 462
    const/4 v1, 0x2

    .line 465
    .local v1, "bufferCapacity":I
    array-length v6, p2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v3, p2, v4

    .line 466
    .local v3, "obj":Ljava/lang/Object;
    instance-of v7, v3, Ljava/lang/Byte;

    if-eqz v7, :cond_0

    .line 467
    add-int/lit8 v1, v1, 0x1

    .line 465
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 468
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v7, v3, Ljava/lang/Short;

    if-eqz v7, :cond_1

    .line 469
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 470
    :cond_1
    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 471
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 472
    :cond_2
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 473
    check-cast v3, Ljava/lang/String;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v1, v7

    goto :goto_1

    .line 475
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters should be one of the class types: Byte, Short, Integer, String"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 479
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 480
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 481
    if-eqz p1, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    array-length v6, p2

    move v4, v5

    :goto_3
    if-ge v4, v6, :cond_a

    aget-object v3, p2, v4

    .line 486
    .restart local v3    # "obj":Ljava/lang/Object;
    instance-of v7, v3, Ljava/lang/Byte;

    if-eqz v7, :cond_6

    .line 487
    check-cast v3, Ljava/lang/Byte;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 481
    :cond_5
    const/16 v4, -0x7f

    goto :goto_2

    .line 488
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v7, v3, Ljava/lang/Short;

    if-eqz v7, :cond_7

    .line 489
    check-cast v3, Ljava/lang/Short;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 490
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    .line 491
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 492
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 494
    :try_start_0
    check-cast v3, Ljava/lang/String;

    .end local v3    # "obj":Ljava/lang/Object;
    const-string v7, "US-ASCII"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Non-ASCII string encoding is not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 500
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters should be one of the class types: Byte, Short, Integer, String"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 503
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method public static varargs pack(Ljava/lang/String;[Ljava/lang/Object;)[B
    .locals 20
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v14, "(?<=\\D)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "formatTokens":[Ljava/lang/String;
    array-length v14, v5

    new-array v9, v14, [Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;

    .line 58
    .local v9, "literals":[Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;
    const/4 v7, 0x0

    .line 59
    .local v7, "index":I
    const/4 v3, 0x0

    .line 62
    .local v3, "bufferCapacity":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v14, v5

    if-ge v6, v14, :cond_3

    .line 63
    aget-object v13, v5, v6

    .line 64
    .local v13, "token":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 65
    .local v12, "symbol":C
    const/4 v10, 0x1

    .line 66
    .local v10, "size":I
    const/4 v11, 0x0

    .line 68
    .local v11, "sizeSpecified":Z
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    .line 70
    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 71
    const/4 v11, 0x1

    .line 73
    const/4 v14, 0x1

    if-ge v10, v14, :cond_0

    .line 74
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Illegal format string"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 77
    :cond_0
    sparse-switch v12, :sswitch_data_0

    .line 149
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Illegal format string"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 79
    :sswitch_0
    add-int/2addr v3, v10

    .line 152
    :goto_1
    new-instance v14, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;

    invoke-direct {v14, v12, v10}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;-><init>(CI)V

    aput-object v14, v9, v6

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    :sswitch_1
    add-int/2addr v3, v10

    .line 84
    add-int/2addr v7, v10

    .line 85
    goto :goto_1

    .line 88
    :sswitch_2
    add-int/2addr v3, v10

    .line 89
    add-int/lit8 v7, v7, 0x1

    .line 90
    goto :goto_1

    .line 93
    :sswitch_3
    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v3, v14

    .line 94
    add-int/2addr v7, v10

    .line 95
    goto :goto_1

    .line 98
    :sswitch_4
    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v3, v14

    .line 99
    add-int/lit8 v7, v7, 0x1

    .line 100
    goto :goto_1

    .line 103
    :sswitch_5
    mul-int/lit8 v14, v10, 0x4

    add-int/2addr v3, v14

    .line 104
    add-int/2addr v7, v10

    .line 105
    goto :goto_1

    .line 108
    :sswitch_6
    mul-int/lit8 v14, v10, 0x4

    add-int/2addr v3, v14

    .line 109
    add-int/lit8 v7, v7, 0x1

    .line 110
    goto :goto_1

    .line 113
    :sswitch_7
    mul-int/lit8 v14, v10, 0x8

    add-int/2addr v3, v14

    .line 114
    add-int/2addr v7, v10

    .line 115
    goto :goto_1

    .line 118
    :sswitch_8
    mul-int/lit8 v14, v10, 0x8

    add-int/2addr v3, v14

    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    goto :goto_1

    .line 123
    :sswitch_9
    mul-int/lit8 v14, v10, 0x4

    add-int/2addr v3, v14

    .line 124
    add-int/2addr v7, v10

    .line 125
    goto :goto_1

    .line 128
    :sswitch_a
    mul-int/lit8 v14, v10, 0x4

    add-int/2addr v3, v14

    .line 129
    add-int/lit8 v7, v7, 0x1

    .line 130
    goto :goto_1

    .line 133
    :sswitch_b
    aget-object v14, p1, v7

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eq v10, v14, :cond_1

    .line 134
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Illegal format string"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 136
    :cond_1
    add-int/2addr v3, v10

    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 138
    goto :goto_1

    .line 141
    :sswitch_c
    if-eqz v11, :cond_2

    .line 142
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Illegal format string"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 144
    :cond_2
    aget-object v14, p1, v7

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v3, v14

    .line 145
    add-int/lit8 v7, v7, 0x1

    .line 146
    goto :goto_1

    .line 155
    .end local v10    # "size":I
    .end local v11    # "sizeSpecified":Z
    .end local v12    # "symbol":C
    .end local v13    # "token":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    array-length v14, v0

    if-eq v7, v14, :cond_4

    .line 156
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Illegal format string"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 159
    :cond_4
    const/4 v7, 0x0

    .line 160
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 161
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 163
    array-length v0, v9

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    aget-object v8, v9, v15

    .line 164
    .local v8, "literal":Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;
    iget-char v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->symbol:C

    sparse-switch v14, :sswitch_data_1

    .line 163
    :cond_5
    :goto_3
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_2

    .line 166
    :sswitch_d
    const/4 v6, 0x0

    :goto_4
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_5

    .line 167
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 171
    :sswitch_e
    const/4 v6, 0x0

    :goto_5
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_5

    .line 172
    aget-object v14, p1, v7

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 173
    add-int/lit8 v7, v7, 0x1

    .line 171
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 178
    :sswitch_f
    aget-object v14, p1, v7

    check-cast v14, [B

    check-cast v14, [B

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 179
    add-int/lit8 v7, v7, 0x1

    .line 180
    goto :goto_3

    .line 183
    :sswitch_10
    const/4 v6, 0x0

    :goto_6
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_5

    .line 184
    aget-object v14, p1, v7

    check-cast v14, Ljava/lang/Short;

    invoke-virtual {v14}, Ljava/lang/Short;->shortValue()S

    move-result v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 185
    add-int/lit8 v7, v7, 0x1

    .line 183
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 190
    :sswitch_11
    const/4 v6, 0x0

    :goto_7
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_6

    .line 191
    aget-object v14, p1, v7

    check-cast v14, [S

    check-cast v14, [S

    aget-short v14, v14, v6

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 193
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 194
    goto :goto_3

    .line 197
    :sswitch_12
    const/4 v6, 0x0

    :goto_8
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_5

    .line 198
    aget-object v14, p1, v7

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    add-int/lit8 v7, v7, 0x1

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 204
    :sswitch_13
    const/4 v6, 0x0

    :goto_9
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_7

    .line 205
    aget-object v14, p1, v7

    check-cast v14, [I

    check-cast v14, [I

    aget v14, v14, v6

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 204
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 207
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 208
    goto/16 :goto_3

    .line 211
    :sswitch_14
    const/4 v6, 0x0

    :goto_a
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_5

    .line 212
    aget-object v14, p1, v7

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 213
    add-int/lit8 v7, v7, 0x1

    .line 211
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 218
    :sswitch_15
    const/4 v6, 0x0

    :goto_b
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_8

    .line 219
    aget-object v14, p1, v7

    check-cast v14, [J

    check-cast v14, [J

    aget-wide v18, v14, v6

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 218
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 221
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 222
    goto/16 :goto_3

    .line 225
    :sswitch_16
    const/4 v6, 0x0

    :goto_c
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_5

    .line 226
    aget-object v14, p1, v7

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 227
    add-int/lit8 v7, v7, 0x1

    .line 225
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 232
    :sswitch_17
    const/4 v6, 0x0

    :goto_d
    iget v14, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v6, v14, :cond_9

    .line 233
    aget-object v14, p1, v7

    check-cast v14, [F

    check-cast v14, [F

    aget v14, v14, v6

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 235
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 236
    goto/16 :goto_3

    .line 240
    :sswitch_18
    :try_start_0
    aget-object v14, p1, v7

    check-cast v14, Ljava/lang/String;

    const-string v17, "US-ASCII"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    add-int/lit8 v7, v7, 0x1

    .line 245
    goto/16 :goto_3

    .line 241
    :catch_0
    move-exception v4

    .line 242
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 249
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :sswitch_19
    :try_start_1
    aget-object v14, p1, v7

    check-cast v14, Ljava/lang/String;

    const-string v17, "US-ASCII"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 250
    :catch_1
    move-exception v4

    .line 251
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 258
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "literal":Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;
    :cond_a
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    return-object v14

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x46 -> :sswitch_a
        0x48 -> :sswitch_4
        0x49 -> :sswitch_6
        0x4c -> :sswitch_8
        0x53 -> :sswitch_c
        0x62 -> :sswitch_1
        0x66 -> :sswitch_9
        0x68 -> :sswitch_3
        0x69 -> :sswitch_5
        0x6c -> :sswitch_7
        0x73 -> :sswitch_b
        0x78 -> :sswitch_0
    .end sparse-switch

    .line 164
    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_f
        0x46 -> :sswitch_17
        0x48 -> :sswitch_11
        0x49 -> :sswitch_13
        0x4c -> :sswitch_15
        0x53 -> :sswitch_19
        0x62 -> :sswitch_e
        0x66 -> :sswitch_16
        0x68 -> :sswitch_10
        0x69 -> :sswitch_12
        0x6c -> :sswitch_14
        0x73 -> :sswitch_18
        0x78 -> :sswitch_d
    .end sparse-switch
.end method

.method public static unpack(Ljava/lang/String;[B)[Ljava/lang/Object;
    .locals 26
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 262
    const-string v21, "(?<=\\D)"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, "formatTokens":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v8, "decodedObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 265
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 267
    array-length v0, v11

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v20, v11, v21

    .line 268
    .local v20, "token":Ljava/lang/String;
    const/16 v17, 0x0

    .line 269
    .local v17, "sizeSpecified":Z
    const/16 v16, 0x1

    .line 270
    .local v16, "size":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    .line 272
    .local v19, "symbol":C
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 273
    const/16 v17, 0x1

    .line 274
    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 276
    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 277
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Illegal format string"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 280
    :cond_0
    sparse-switch v19, :sswitch_data_0

    .line 380
    :cond_1
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Illegal format string"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 282
    :sswitch_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    .line 283
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    .line 282
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 287
    .end local v12    # "i":I
    :sswitch_1
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    .line 288
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 292
    .end local v12    # "i":I
    :sswitch_2
    move/from16 v0, v16

    new-array v6, v0, [B

    .line 293
    .local v6, "byteArray":[B
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v5, v6, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 294
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v6    # "byteArray":[B
    :cond_2
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 298
    :sswitch_3
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    .line 299
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 303
    .end local v12    # "i":I
    :sswitch_4
    move/from16 v0, v16

    new-array v15, v0, [S

    .line 304
    .local v15, "shorts":[S
    const/4 v12, 0x0

    .local v12, "i":S
    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    .line 305
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v23

    aput-short v23, v15, v12

    .line 304
    add-int/lit8 v23, v12, 0x1

    move/from16 v0, v23

    int-to-short v12, v0

    goto :goto_5

    .line 306
    :cond_3
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 310
    .end local v12    # "i":S
    .end local v15    # "shorts":[S
    :sswitch_5
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    .line 311
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 315
    .end local v12    # "i":I
    :sswitch_6
    move/from16 v0, v16

    new-array v13, v0, [I

    .line 316
    .local v13, "integers":[I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 317
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    aput v23, v13, v12

    .line 316
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 318
    :cond_4
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 322
    .end local v12    # "i":I
    .end local v13    # "integers":[I
    :sswitch_7
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_8
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    .line 323
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 327
    .end local v12    # "i":I
    :sswitch_8
    move/from16 v0, v16

    new-array v14, v0, [J

    .line 328
    .local v14, "longs":[J
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_9
    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    .line 329
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v24

    aput-wide v24, v14, v12

    .line 328
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 330
    :cond_5
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 334
    .end local v12    # "i":I
    .end local v14    # "longs":[J
    :sswitch_9
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    .line 335
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 339
    .end local v12    # "i":I
    :sswitch_a
    move/from16 v0, v16

    new-array v10, v0, [F

    .line 340
    .local v10, "floats":[F
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v12, v0, :cond_6

    .line 341
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v23

    aput v23, v10, v12

    .line 340
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 342
    :cond_6
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 346
    .end local v10    # "floats":[F
    .end local v12    # "i":I
    :sswitch_b
    move/from16 v0, v16

    new-array v7, v0, [B

    .line 347
    .local v7, "byteString":[B
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v5, v7, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 349
    :try_start_0
    new-instance v23, Ljava/lang/String;

    const-string v24, "US-ASCII"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 350
    :catch_0
    move-exception v9

    .line 351
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 356
    .end local v7    # "byteString":[B
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    :sswitch_c
    if-eqz v17, :cond_7

    .line 357
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Illegal format string"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 359
    :cond_7
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    .local v18, "stringBuffer":Ljava/lang/StringBuffer;
    :goto_c
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 363
    .local v4, "b":B
    if-eqz v4, :cond_8

    .line 364
    int-to-char v0, v4

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 369
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 373
    .end local v4    # "b":B
    .end local v18    # "stringBuffer":Ljava/lang/StringBuffer;
    :sswitch_d
    if-eqz v17, :cond_9

    .line 374
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Illegal format string"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 376
    :cond_9
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 377
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Illegal format string"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 384
    .end local v16    # "size":I
    .end local v17    # "sizeSpecified":Z
    .end local v19    # "symbol":C
    .end local v20    # "token":Ljava/lang/String;
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v21

    return-object v21

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_d
        0x42 -> :sswitch_2
        0x46 -> :sswitch_a
        0x48 -> :sswitch_4
        0x49 -> :sswitch_6
        0x4c -> :sswitch_8
        0x53 -> :sswitch_c
        0x62 -> :sswitch_1
        0x66 -> :sswitch_9
        0x68 -> :sswitch_3
        0x69 -> :sswitch_5
        0x6c -> :sswitch_7
        0x73 -> :sswitch_b
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
