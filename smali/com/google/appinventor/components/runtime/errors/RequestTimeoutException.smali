.class public Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
.super Ljava/io/IOException;
.source "RequestTimeoutException.java"


# instance fields
.field final errorNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 20
    const/16 v0, 0x45d

    iput v0, p0, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;->errorNumber:I

    .line 21
    return-void
.end method
