.class public Lcom/google/appinventor/components/runtime/errors/DispatchableError;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.source "DispatchableError.java"


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ErrorMessages;->formatMessage(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->errorCode:I

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->arguments:[Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 25
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ErrorMessages;->formatMessage(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    .line 26
    iput p1, p0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->errorCode:I

    .line 27
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->arguments:[Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->arguments:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->arguments:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->errorCode:I

    return v0
.end method
