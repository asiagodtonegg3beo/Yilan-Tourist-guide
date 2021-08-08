.class public Lorg/locationtech/jts/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expectedValue"    # Ljava/lang/Object;
    .param p1, "actualValue"    # Ljava/lang/Object;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/util/Assert;->equals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p0, "expectedValue"    # Ljava/lang/Object;
    .param p1, "actualValue"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    new-instance v1, Lorg/locationtech/jts/util/AssertionFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but encountered "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/locationtech/jts/util/AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public static isTrue(Z)V
    .locals 1
    .param p0, "assertion"    # Z

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 32
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .locals 1
    .param p0, "assertion"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p0, :cond_1

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Lorg/locationtech/jts/util/AssertionFailedException;

    invoke-direct {v0}, Lorg/locationtech/jts/util/AssertionFailedException;-><init>()V

    throw v0

    .line 48
    :cond_0
    new-instance v0, Lorg/locationtech/jts/util/AssertionFailedException;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/util/AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    return-void
.end method

.method public static shouldNeverReachHere()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static shouldNeverReachHere(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v1, Lorg/locationtech/jts/util/AssertionFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should never reach here"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/locationtech/jts/util/AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
