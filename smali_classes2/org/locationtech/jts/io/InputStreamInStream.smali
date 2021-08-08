.class public Lorg/locationtech/jts/io/InputStreamInStream;
.super Ljava/lang/Object;
.source "InputStreamInStream.java"

# interfaces
.implements Lorg/locationtech/jts/io/InStream;


# instance fields
.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/locationtech/jts/io/InputStreamInStream;->is:Ljava/io/InputStream;

    .line 28
    return-void
.end method


# virtual methods
.method public read([B)V
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lorg/locationtech/jts/io/InputStreamInStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 33
    return-void
.end method
