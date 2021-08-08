.class public Lorg/locationtech/jts/index/sweepline/SweepLineInterval;
.super Ljava/lang/Object;
.source "SweepLineInterval.java"


# instance fields
.field private item:Ljava/lang/Object;

.field private max:D

.field private min:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    .line 26
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;-><init>(DDLjava/lang/Object;)V

    .line 27
    return-void
.end method

.method public constructor <init>(DDLjava/lang/Object;)V
    .locals 3
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "item"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    move-wide v0, p1

    :goto_0
    iput-wide v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->min:D

    .line 32
    cmpl-double v0, p3, p1

    if-lez v0, :cond_1

    .end local p3    # "max":D
    :goto_1
    iput-wide p3, p0, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->max:D

    .line 33
    iput-object p5, p0, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->item:Ljava/lang/Object;

    .line 34
    return-void

    .restart local p3    # "max":D
    :cond_0
    move-wide v0, p3

    .line 31
    goto :goto_0

    :cond_1
    move-wide p3, p1

    .line 32
    goto :goto_1
.end method


# virtual methods
.method public getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getMax()D
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->max:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->min:D

    return-wide v0
.end method
