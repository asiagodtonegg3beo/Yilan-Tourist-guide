.class Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;
.super Ljava/lang/Object;
.source "ZipEntryReader.java"


# static fields
.field private static final CENSIG:J = 0x2014b50L

.field private static final GPBF_ENCRYPTED_FLAG:I = 0x1

.field private static final GPBF_UNSUPPORTED_MASK:I = 0x1

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTime(II)J
    .locals 7
    .param p0, "time"    # I
    .param p1, "modDate"    # I

    .prologue
    .line 112
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 113
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 114
    shr-int/lit8 v1, p1, 0x9

    and-int/lit8 v1, v1, 0x7f

    add-int/lit16 v1, v1, 0x7bc

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v4, p0, 0xb

    and-int/lit8 v4, v4, 0x1f

    shr-int/lit8 v5, p0, 0x5

    and-int/lit8 v5, v5, 0x3f

    and-int/lit8 v6, p0, 0x1f

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 117
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method static readEntry(Ljava/nio/ByteBuffer;)Ljava/util/zip/ZipEntry;
    .locals 32
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    .line 53
    .local v23, "sig":I
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x2014b50    # 1.6619997E-316

    cmp-long v27, v28, v30

    if-eqz v27, :cond_0

    .line 54
    new-instance v27, Ljava/util/zip/ZipException;

    const-string v28, "Central Directory Entry not found"

    invoke-direct/range {v27 .. v28}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 57
    :cond_0
    const/16 v27, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    const v28, 0xffff

    and-int v16, v27, v28

    .line 60
    .local v16, "gpbf":I
    and-int/lit8 v27, v16, 0x1

    if-eqz v27, :cond_1

    .line 61
    new-instance v27, Ljava/util/zip/ZipException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Invalid General Purpose Bit Flag: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 64
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    const v28, 0xffff

    and-int v10, v27, v28

    .line 65
    .local v10, "compressionMethod":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    const v28, 0xffff

    and-int v26, v27, v28

    .line 66
    .local v26, "time":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    const v28, 0xffff

    and-int v17, v27, v28

    .line 69
    .local v17, "modDate":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v12, v28, v30

    .line 70
    .local v12, "crc":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v8, v28, v30

    .line 71
    .local v8, "compressedSize":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v24, v28, v30

    .line 73
    .local v24, "size":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    const v28, 0xffff

    and-int v22, v27, v28

    .line 74
    .local v22, "nameLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    const v28, 0xffff

    and-int v15, v27, v28

    .line 75
    .local v15, "extraLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    const v28, 0xffff

    and-int v6, v27, v28

    .line 78
    .local v6, "commentByteCount":I
    const/16 v27, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v18, v28, v30

    .line 81
    .local v18, "localHeaderRelOffset":J
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 82
    .local v21, "nameBytes":[B
    const/16 v27, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 83
    new-instance v20, Ljava/lang/String;

    const/16 v27, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v28, v0

    sget-object v29, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 85
    .local v20, "name":Ljava/lang/String;
    new-instance v11, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 86
    .local v11, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v11, v10}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 87
    move/from16 v0, v26

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->getTime(II)J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 89
    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 90
    invoke-virtual {v11, v8, v9}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 91
    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 95
    if-lez v6, :cond_2

    .line 96
    new-array v7, v6, [B

    .line 97
    .local v7, "commentBytes":[B
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 98
    new-instance v27, Ljava/lang/String;

    const/16 v28, 0x0

    array-length v0, v7

    move/from16 v29, v0

    sget-object v30, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v7, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 101
    .end local v7    # "commentBytes":[B
    :cond_2
    if-lez v15, :cond_3

    .line 102
    new-array v14, v15, [B

    .line 103
    .local v14, "extra":[B
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v11, v14}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 107
    .end local v14    # "extra":[B
    :cond_3
    return-object v11
.end method
