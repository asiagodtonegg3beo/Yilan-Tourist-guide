.class public Lkawa/standard/sleep;
.super Ljava/lang/Object;
.source "sleep.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sleep(Lgnu/math/Quantity;)V
    .locals 14
    .param p0, "q"    # Lgnu/math/Quantity;

    .prologue
    .line 11
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    .line 14
    .local v6, "u":Lgnu/math/Unit;
    sget-object v7, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v6, v7, :cond_0

    invoke-virtual {v6}, Lgnu/math/Unit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v7

    sget-object v8, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-virtual {v8}, Lgnu/math/NamedUnit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Quantity;->doubleValue()D

    move-result-wide v4

    .line 19
    .local v4, "seconds":D
    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v4

    double-to-long v2, v8

    .line 20
    .local v2, "millis":J
    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v8, v4

    long-to-double v10, v2

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v1, v8

    .line 23
    .local v1, "nanos":I
    :try_start_0
    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-void

    .line 18
    .end local v1    # "nanos":I
    .end local v2    # "millis":J
    .end local v4    # "seconds":D
    :cond_1
    new-instance v7, Lkawa/lang/GenericError;

    const-string v8, "bad unit for sleep"

    invoke-direct {v7, v8}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 25
    .restart local v1    # "nanos":I
    .restart local v2    # "millis":J
    .restart local v4    # "seconds":D
    :catch_0
    move-exception v0

    .line 27
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v7, Lkawa/lang/GenericError;

    const-string v8, "sleep was interrupted"

    invoke-direct {v7, v8}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v7
.end method
