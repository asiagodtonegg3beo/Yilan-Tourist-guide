.class public Lorg/locationtech/jts/io/OutputStreamOutStream;
.super Ljava/lang/Object;
.source "OutputStreamOutStream.java"

# interfaces
.implements Lorg/locationtech/jts/io/OutStream;


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/locationtech/jts/io/OutputStreamOutStream;->os:Ljava/io/OutputStream;

    .line 28
    return-void
.end method


# virtual methods
.method public write([BI)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lorg/locationtech/jts/io/OutputStreamOutStream;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 32
    return-void
.end method
