.class public Lorg/locationtech/jts/util/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private isRunning:Z

.field private startTimestamp:J

.field private totalTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/util/Stopwatch;->totalTime:J

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/util/Stopwatch;->isRunning:Z

    .line 29
    invoke-virtual {p0}, Lorg/locationtech/jts/util/Stopwatch;->start()V

    .line 30
    return-void
.end method

.method public static getTimeString(J)Ljava/lang/String;
    .locals 6
    .param p0, "timeMillis"    # J

    .prologue
    .line 82
    const-wide/16 v2, 0x2710

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "totalTimeStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 82
    .end local v0    # "totalTimeStr":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, p0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateTotalTime()V
    .locals 6

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 64
    .local v2, "endTimestamp":J
    iget-wide v4, p0, Lorg/locationtech/jts/util/Stopwatch;->startTimestamp:J

    sub-long v0, v2, v4

    .line 65
    .local v0, "elapsedTime":J
    iput-wide v2, p0, Lorg/locationtech/jts/util/Stopwatch;->startTimestamp:J

    .line 66
    iget-wide v4, p0, Lorg/locationtech/jts/util/Stopwatch;->totalTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/locationtech/jts/util/Stopwatch;->totalTime:J

    .line 67
    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/locationtech/jts/util/Stopwatch;->updateTotalTime()V

    .line 72
    iget-wide v0, p0, Lorg/locationtech/jts/util/Stopwatch;->totalTime:J

    return-wide v0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/locationtech/jts/util/Stopwatch;->getTime()J

    move-result-wide v0

    .line 78
    .local v0, "totalTime":J
    invoke-static {v0, v1}, Lorg/locationtech/jts/util/Stopwatch;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/util/Stopwatch;->totalTime:J

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/util/Stopwatch;->startTimestamp:J

    .line 52
    return-void
.end method

.method public split()J
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/locationtech/jts/util/Stopwatch;->isRunning:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lorg/locationtech/jts/util/Stopwatch;->updateTotalTime()V

    .line 58
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/jts/util/Stopwatch;->totalTime:J

    return-wide v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/locationtech/jts/util/Stopwatch;->isRunning:Z

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/util/Stopwatch;->startTimestamp:J

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/util/Stopwatch;->isRunning:Z

    goto :goto_0
.end method

.method public stop()J
    .locals 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/locationtech/jts/util/Stopwatch;->isRunning:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lorg/locationtech/jts/util/Stopwatch;->updateTotalTime()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/util/Stopwatch;->isRunning:Z

    .line 45
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/jts/util/Stopwatch;->totalTime:J

    return-wide v0
.end method
