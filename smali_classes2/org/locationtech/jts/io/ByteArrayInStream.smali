.class public Lorg/locationtech/jts/io/ByteArrayInStream;
.super Ljava/lang/Object;
.source "ByteArrayInStream.java"

# interfaces
.implements Lorg/locationtech/jts/io/InStream;


# instance fields
.field private buffer:[B

.field private position:I


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/io/ByteArrayInStream;->setBytes([B)V

    .line 36
    return-void
.end method


# virtual methods
.method public read([B)V
    .locals 5
    .param p1, "buf"    # [B

    .prologue
    const/4 v4, 0x0

    .line 55
    array-length v1, p1

    .line 57
    .local v1, "numToRead":I
    iget v2, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->position:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->buffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 58
    iget-object v2, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->position:I

    sub-int v1, v2, v3

    .line 59
    iget-object v2, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->buffer:[B

    iget v3, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->position:I

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    move v0, v1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 62
    aput-byte v4, p1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->buffer:[B

    iget v3, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->position:I

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :cond_1
    iget v2, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->position:I

    .line 69
    return-void
.end method

.method public setBytes([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 44
    iput-object p1, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->buffer:[B

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/io/ByteArrayInStream;->position:I

    .line 46
    return-void
.end method
