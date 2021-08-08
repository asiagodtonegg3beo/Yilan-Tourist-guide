.class public Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
.super Ljava/lang/Object;
.source "SweepLineEvent.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final DELETE:I = 0x2

.field public static final INSERT:I = 0x1


# instance fields
.field private deleteEventIndex:I

.field private eventType:I

.field private insertEvent:Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

.field sweepInt:Lorg/locationtech/jts/index/sweepline/SweepLineInterval;

.field private xValue:D


# direct methods
.method public constructor <init>(DLorg/locationtech/jts/index/sweepline/SweepLineEvent;Lorg/locationtech/jts/index/sweepline/SweepLineInterval;)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "insertEvent"    # Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    .param p4, "sweepInt"    # Lorg/locationtech/jts/index/sweepline/SweepLineInterval;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->xValue:D

    .line 35
    iput-object p3, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->insertEvent:Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->eventType:I

    .line 37
    if-eqz p3, :cond_0

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->eventType:I

    .line 39
    :cond_0
    iput-object p4, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->sweepInt:Lorg/locationtech/jts/index/sweepline/SweepLineInterval;

    .line 40
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 57
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    .line 58
    .local v0, "pe":Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    iget-wide v4, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->xValue:D

    iget-wide v6, v0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->xValue:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    iget-wide v4, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->xValue:D

    iget-wide v6, v0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->xValue:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 60
    :cond_2
    iget v3, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->eventType:I

    iget v4, v0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->eventType:I

    if-lt v3, v4, :cond_0

    .line 61
    iget v1, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->eventType:I

    iget v3, v0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->eventType:I

    if-le v1, v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 62
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeleteEventIndex()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->deleteEventIndex:I

    return v0
.end method

.method public getInsertEvent()Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->insertEvent:Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    return-object v0
.end method

.method getInterval()Lorg/locationtech/jts/index/sweepline/SweepLineInterval;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->sweepInt:Lorg/locationtech/jts/index/sweepline/SweepLineInterval;

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->insertEvent:Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsert()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->insertEvent:Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeleteEventIndex(I)V
    .locals 0
    .param p1, "deleteEventIndex"    # I

    .prologue
    .line 46
    iput p1, p0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->deleteEventIndex:I

    return-void
.end method
