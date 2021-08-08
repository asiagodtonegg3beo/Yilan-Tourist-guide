.class public Lorg/locationtech/jts/io/ByteOrderDataInStream;
.super Ljava/lang/Object;
.source "ByteOrderDataInStream.java"


# instance fields
.field private buf1:[B

.field private buf4:[B

.field private buf8:[B

.field private byteOrder:I

.field private stream:Lorg/locationtech/jts/io/InStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->byteOrder:I

    .line 26
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf1:[B

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf4:[B

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf8:[B

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->stream:Lorg/locationtech/jts/io/InStream;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/io/InStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/locationtech/jts/io/InStream;

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->byteOrder:I

    .line 26
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf1:[B

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf4:[B

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf8:[B

    .line 37
    iput-object p1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->stream:Lorg/locationtech/jts/io/InStream;

    .line 38
    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->stream:Lorg/locationtech/jts/io/InStream;

    iget-object v1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf1:[B

    invoke-interface {v0, v1}, Lorg/locationtech/jts/io/InStream;->read([B)V

    .line 64
    iget-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf1:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->stream:Lorg/locationtech/jts/io/InStream;

    iget-object v1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf8:[B

    invoke-interface {v0, v1}, Lorg/locationtech/jts/io/InStream;->read([B)V

    .line 84
    iget-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf8:[B

    iget v1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->byteOrder:I

    invoke-static {v0, v1}, Lorg/locationtech/jts/io/ByteOrderValues;->getDouble([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->stream:Lorg/locationtech/jts/io/InStream;

    iget-object v1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf4:[B

    invoke-interface {v0, v1}, Lorg/locationtech/jts/io/InStream;->read([B)V

    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf4:[B

    iget v1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->byteOrder:I

    invoke-static {v0, v1}, Lorg/locationtech/jts/io/ByteOrderValues;->getInt([BI)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->stream:Lorg/locationtech/jts/io/InStream;

    iget-object v1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf8:[B

    invoke-interface {v0, v1}, Lorg/locationtech/jts/io/InStream;->read([B)V

    .line 77
    iget-object v0, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->buf8:[B

    iget v1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->byteOrder:I

    invoke-static {v0, v1}, Lorg/locationtech/jts/io/ByteOrderValues;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public setInStream(Lorg/locationtech/jts/io/InStream;)V
    .locals 0
    .param p1, "stream"    # Lorg/locationtech/jts/io/InStream;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->stream:Lorg/locationtech/jts/io/InStream;

    .line 49
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .prologue
    .line 52
    iput p1, p0, Lorg/locationtech/jts/io/ByteOrderDataInStream;->byteOrder:I

    .line 53
    return-void
.end method
